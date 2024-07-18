import re
import numpy as np
from scipy import io

# Example input string
input_str = "[array1([]),array2([]),array3([]),array4([])]%[array1([]),array2([]),array3([]),array4([])]%[array1([]),array2([]),array3([]),array4([])]%[array1([]),array2([]),array3([]),array4([])]"

# Regular expression to match [array1([])]
pattern = r'\[array\d+\(\[\]\)\]'

# Function to replace [array([])] with desired format
def replace_array(match):
    array_str = match.group(0)  # Get matched string, e.g., '[array1([])]'
    array_num = int(re.search(r'\d+', array_str).group())  # Extract number from array1
    # Assuming you have a function or method to get the length of the array, replace `len(array([]))` with the actual length
    length = len(np.array([]))  # Replace with actual length calculation
    return f"[array{array_num}(reshape([],4,{length}))]"  # Format the replacement string

# Perform the replacement using re.sub
output_str = re.sub(pattern, replace_array, input_str)

# Save formatted string to a .mat file
io.savemat('formatted_data.mat', {'formatted_data': output_str}, appendmat=False)

print(f"Formatted data saved to formatted_data.mat")

