from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Schicmanagescool_V0_1_0 = CommandToolBuilder(tool="scHicManageScool", base_command=["scHicManageScool"], inputs=[ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="The scool matrix (default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the exported matrix, in case of\nextract the folder name (default: None)")), ToolInput(tag="in_action", input_type=String(optional=True), prefix="--action", doc=InputDocumentation(doc="The different actions this tool is able to do. Update\ncan be used to update scool files from scHiCExplorer\nversion 4 to the file format as it is used starting\nfrom scHiCExplorer 5.ExtractToCool extracts either a\ngiven scool file to individual cool files or only a\nsubset given by a list. ExtractScool requires a list\nof internal cells that should be copied to a new scool\nfile. (default: none)")), ToolInput(tag="in_cell_list", input_type=File(optional=True), prefix="--cellList", doc=InputDocumentation(doc="A text file with the cells that should be extracted or\ncopied to the a new scool file. (default: None)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the exported matrix, in case of\nextract the folder name (default: None)"))], container="quay.io/biocontainers/schicexplorer:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicmanagescool_V0_1_0().translate("wdl")

