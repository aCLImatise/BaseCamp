from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File, Int

Schicconvertformat_V0_1_0 = CommandToolBuilder(tool="scHicConvertFormat", base_command=["scHicConvertFormat"], inputs=[ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="The matrix to adjust in the scool format. (default:\nNone)")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--outputFolder", doc=InputDocumentation(doc="Folder name to save the files (default: .)")), ToolInput(tag="in_output_cell_name_file", input_type=File(optional=True), prefix="--outputCellNameFile", doc=InputDocumentation(doc="File name to save the cell names and their location\n(default: cellNameFile.txt)")), ToolInput(tag="in_output_chromosome_size", input_type=Int(optional=True), prefix="--outputChromosomeSize", doc=InputDocumentation(doc="File name to save the chromosome sizes (default:\nchromosomeSize.txt)")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="The format of the output files (default: schicluster)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Folder name to save the files (default: .)")), ToolOutput(tag="out_output_cell_name_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_cell_name_file", type_hint=File()), doc=OutputDocumentation(doc="File name to save the cell names and their location\n(default: cellNameFile.txt)"))], container="quay.io/biocontainers/schicexplorer:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicconvertformat_V0_1_0().translate("wdl")

