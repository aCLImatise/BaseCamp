from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Parsedb_Py_Split_V0_1_0 = CommandToolBuilder(tool="ParseDb.py_split", base_command=["ParseDb.py", "split"], inputs=[ToolInput(tag="in_list_tab_defaultnone", input_type=Array(t=String(), optional=True), prefix="-d", doc=InputDocumentation(doc="A list of tab delimited database files. (default:\nNone)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_annotation_field_split", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Annotation field by which to split database files.\n(default: None)")), ToolInput(tag="in_num", input_type=Int(optional=True), prefix="--num", doc=InputDocumentation(doc="Specify to define the field as numeric and group\nrecords by whether they are less than or at least\n(greater than or equal to) the specified value.\n(default: None)\n"))], outputs=[], container="quay.io/biocontainers/changeo:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsedb_Py_Split_V0_1_0().translate("wdl")

