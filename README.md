# OMR-on-PC
In this system OMR answer sheet will be scanned and this scanned image will be given as input to the software. By using image processing technique, one will find the answers marked by the student by finding the regions of interest and then check the answers. This is a very low-cost efficient system and also works beyond the limitations of the format by making defined manipulations.

The system is implemented using MATLAB and following is the pseudocode for the same: 
    1. Image is read and converted to greyscale.
    2. The possible options (like A B C D or 1 2 3 4) and the correct answer key is provided.
    3. The spacing between each of the row and column of bubbles in provided.
    4. The location of the first bubble in the first half of the OMR sheet is provided.
    5. Using simple loops, the options that are marked by the candidate are stored.
    6. The location of the first bubble in the second half of the OMR sheet is provided.
    7. Using simple loops, the options that are marked by the candidate are appended to the already stored responses.
    8. The marked options are then processed using the possible options provided in step 2 and displayed to the user.
    9. Score of the candidate is calculated by simple comparison between correct answers and the marked answers.
    10. Result of the candidate is evaluated using the cut-off implemented. 
