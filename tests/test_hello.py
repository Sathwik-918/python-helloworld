import sys
import os

# Add the src directory to the Python path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../src')))

from hello import get_hello_message

def test_get_hello_message():
    """
    Test the get_hello_message function.
    """
    assert get_hello_message() == "Hello, World from Python!"
    print("Hello World test passed!")