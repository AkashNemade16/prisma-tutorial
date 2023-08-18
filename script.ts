import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient()

async function main() {
    const user = await prisma.user.create({data:{name:'Akash'}})
    console.log(user)
}

main()
.catch(e=> {
    console.log(e)
})
.finally(async()=>{
    await prisma.$disconnect()
})