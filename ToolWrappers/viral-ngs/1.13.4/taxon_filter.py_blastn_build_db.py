from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Boolean

Taxon_Filter_Py_Blastn_Build_Db_V0_1_0 = CommandToolBuilder(tool="taxon_filter.py_blastn_build_db", base_command=["taxon_filter.py", "blastn_build_db"], inputs=[ToolInput(tag="in_output_file_prefix", input_type=File(optional=True), prefix="--outputFilePrefix", doc=InputDocumentation(doc="Prefix for the output file name (default: inputFasta\nname, sans '.fasta' extension)")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.\n")), ToolInput(tag="in_input_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Location of the input FASTA file")), ToolInput(tag="in_output_directory", input_type=String(), position=1, doc=InputDocumentation(doc="Location for the output files"))], outputs=[ToolOutput(tag="out_output_file_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix for the output file name (default: inputFasta\nname, sans '.fasta' extension)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Filter_Py_Blastn_Build_Db_V0_1_0().translate("wdl", allow_empty_container=True)

