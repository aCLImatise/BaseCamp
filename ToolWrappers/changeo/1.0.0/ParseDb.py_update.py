from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Parsedb_Py_Update_V0_1_0 = CommandToolBuilder(tool="ParseDb.py_update", base_command=["ParseDb.py", "update"], inputs=[ToolInput(tag="in_list_tab_defaultnone", input_type=Array(t=String(), optional=True), prefix="-d", doc=InputDocumentation(doc="A list of tab delimited database files. (default:\nNone)")), ToolInput(tag="in_explicit_output_file", input_type=Array(t=String(), optional=True), prefix="-o", doc=InputDocumentation(doc="Explicit output file name. Note, this argument cannot\nbe used with the --failed, --outdir, or --outname\narguments. If unspecified, then the output filename\nwill be based on the input filename(s). (default:\nNone)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_name_update_default", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="The name of the field to update. (default: None)")), ToolInput(tag="in_values_replaced_default", input_type=Array(t=String(), optional=True), prefix="-u", doc=InputDocumentation(doc="The values that will be replaced. (default: None)")), ToolInput(tag="in_new_value_assign", input_type=Array(t=String(), optional=True), prefix="-t", doc=InputDocumentation(doc="The new value to assign to each selected row.\n(default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsedb_Py_Update_V0_1_0().translate("wdl", allow_empty_container=True)

