from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Parsedb_Py_Merge_V0_1_0 = CommandToolBuilder(tool="ParseDb.py_merge", base_command=["ParseDb.py", "merge"], inputs=[ToolInput(tag="in_list_tab_defaultnone", input_type=Array(t=String(), optional=True), prefix="-d", doc=InputDocumentation(doc="A list of tab delimited database files. (default:\nNone)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_explicit_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Explicit output file name. Note, this argument cannot\nbe used with the --failed, --outdir or --outname\narguments. (default: None)")), ToolInput(tag="in_drop", input_type=Boolean(optional=True), prefix="--drop", doc=InputDocumentation(doc="If specified, drop fields that do not exist in all\ninput files. Otherwise, include all columns in all\nfiles and fill missing data with empty strings.\n(default: False)\n"))], outputs=[ToolOutput(tag="out_explicit_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_explicit_output_file", type_hint=File()), doc=OutputDocumentation(doc="Explicit output file name. Note, this argument cannot\nbe used with the --failed, --outdir or --outname\narguments. (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsedb_Py_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

