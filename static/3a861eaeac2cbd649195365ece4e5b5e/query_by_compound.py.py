from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Query_By_Compound_Py_V0_1_0 = CommandToolBuilder(tool="query_by_compound.py", base_command=["query_by_compound.py"], inputs=[ToolInput(tag="in_input_sample_directories", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input to sample directories output by run_midas.py\nCan be a list of directories, a directory containing all samples, or a file with paths\nSee '-t' for details")), ToolInput(tag="in_list_i_commaseparated", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="list: -i is a comma-separated list (ex: /path/to/samples/sample_1,/path/to/samples/sample_2)\ndir: -i is a directory containing all samples (ex: /path/to/samples)\nfile: -i is a file containing paths to sample directories (ex: /path/to/sample_paths.txt)")), ToolInput(tag="in_path_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Path to output file (/dev/stdout)")), ToolInput(tag="in_path_midas_reference", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Path to MIDAS reference database\nBy default, the MIDAS_DB environmental variable is used")), ToolInput(tag="in_kegg_compound_identifier", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="KEGG Compound identifier"))], outputs=[ToolOutput(tag="out_path_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path to output file (/dev/stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Query_By_Compound_Py_V0_1_0().translate("wdl", allow_empty_container=True)

