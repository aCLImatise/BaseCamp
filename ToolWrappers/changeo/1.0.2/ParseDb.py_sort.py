from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Parsedb_Py_Sort_V0_1_0 = CommandToolBuilder(tool="ParseDb.py_sort", base_command=["ParseDb.py", "sort"], inputs=[ToolInput(tag="in_list_tab_defaultnone", input_type=Array(t=String(), optional=True), prefix="-d", doc=InputDocumentation(doc="A list of tab delimited database files. (default:\nNone)")), ToolInput(tag="in_explicit_output_file", input_type=Array(t=String(), optional=True), prefix="-o", doc=InputDocumentation(doc="Explicit output file name. Note, this argument cannot\nbe used with the --failed, --outdir, or --outname\narguments. If unspecified, then the output filename\nwill be based on the input filename(s). (default:\nNone)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_annotation_field_recordsdefault", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="The annotation field by which to sort records.\n(default: None)")), ToolInput(tag="in_num", input_type=Boolean(optional=True), prefix="--num", doc=InputDocumentation(doc="Specify to define the sort column as numeric rather\nthan textual. (default: False)")), ToolInput(tag="in_descend", input_type=Boolean(optional=True), prefix="--descend", doc=InputDocumentation(doc="If specified, sort records in descending, rather than\nascending, order by values in the target field.\n(default: False)\n"))], outputs=[], container="quay.io/biocontainers/changeo:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsedb_Py_Sort_V0_1_0().translate("wdl")

