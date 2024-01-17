# MyMatrix Fortran Program

Welcome to the MyMatrix Fortran program repository! This project provides a Fortran solution for finding the inverse of 3x3 matrices. The program is designed to read matrix data from an external file, perform matrix inversion calculations, and display the results.

## Table of Contents

- [Overview](#overview)
- [Usage](#usage)
- [File Structure](#file-structure)
- [Contributing](#contributing)
- [License](#license)

## Overview

The `MyMatrix` Fortran program is a tool for computing the inverses of 3x3 matrices. It employs procedures to calculate the determinant, cofactors, and adjoint of the input matrices, ultimately providing the inverse matrix. The code is structured for clarity and ease of understanding.

## Usage

To use the program, follow these steps:

1. **Compile the Fortran Code:**
   Use your preferred Fortran compiler to compile the code. For example:
   ```sh
   gfortran MyMatrix.f90 -o MyMatrix
   ```

2. **Prepare Input Matrices:**
   Create an external file named `Matrixes.txt` with two 3x3 matrices, MatA and MatB.

3. **Run the Executable:**
   Execute the compiled program to read the matrices, calculate their inverses, and display the results.
   ```sh
   ./MyMatrix
   ```

4. **Review Output:**
   Check the `Output.txt` file for the displayed matrices, determinants, and inverses.

## File Structure

- `MyMatrix.f90`: The main Fortran program file containing the matrix inversion logic.
- `Matrixes.txt`: An external file containing input matrices (MatA and MatB).
- `Output.txt`: The output file where the program displays matrices, determinants, and inverses.

## Contributing

If you wish to contribute to this project, follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push to your fork and submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE), allowing for both personal and commercial use.

Feel free to reach out with any questions, issues, or suggestions.

Happy coding!
