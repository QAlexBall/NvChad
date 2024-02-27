// fn primes(n: usize) -> Vec<bool> {
//     let mut p = vec![true; n];
//     p[0] = false;
//     p[1] = false;
//     for i in 2..n {
//         if p[i] {
//             for j in (i * i..n).step_by(i) {
//                 p[j] = false;
//             }
//         }
//     }
//     p
// }

fn main() {
    // print a rand number
    let mut a = rand::random::<u32>();
    a *= 100;
    println!("{}", a);
    println!("{}", rand::random::<u32>());
    println!("Hello, world!");
    // let p = primes(100);
    // loop p
    // println!("{:?}", p);
}
