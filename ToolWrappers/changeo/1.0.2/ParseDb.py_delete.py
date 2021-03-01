from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Parsedb_Py_Delete_V0_1_0 = CommandToolBuilder(tool="ParseDb.py_delete", base_command=["ParseDb.py", "delete"], inputs=[ToolInput(tag="in_list_tab_defaultnone", input_type=Array(t=String(), optional=True), prefix="-d", doc=InputDocumentation(doc="A list of tab delimited database files. (default:\nNone)")), ToolInput(tag="in_explicit_output_file", input_type=Array(t=String(), optional=True), prefix="-o", doc=InputDocumentation(doc="Explicit output file name. Note, this argument cannot\nbe used with the --failed, --outdir, or --outname\narguments. If unspecified, then the output filename\nwill be based on the input filename(s). (default:\nNone)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_name_check_none", input_type=Array(t=String(), optional=True), prefix="-f", doc=InputDocumentation(doc="The name of the fields to check for deletion criteria.\n(default: None)")), ToolInput(tag="in_values_defining_records", input_type=Array(t=String(), optional=True), prefix="-u", doc=InputDocumentation(doc="The values defining which records to delete. A value\nmay appear in any of the fields specified with -f.\n(default: ['', 'NA'])")), ToolInput(tag="in_logic", input_type=String(optional=True), prefix="--logic", doc=InputDocumentation(doc="Defines whether a value may appear in any field (any)\nor whether it must appear in all fields (all).\n(default: any)")), ToolInput(tag="in_regex", input_type=Boolean(optional=True), prefix="--regex", doc=InputDocumentation(doc="If specified, treat values as regular expressions and\nallow partial string matches. (default: False)\n"))], outputs=[], container="quay.io/biocontainers/changeo:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsedb_Py_Delete_V0_1_0().translate("wdl")

