from gerber_renderer import Gerber
import os
# Define input file path
input_file = "./Gerber_DockerSAO_PCB_DockerSAO_2024-03-15.zip"

board = Gerber.Board(file=input_file, max_height=1000, verbose=True)
board.render('./output')
