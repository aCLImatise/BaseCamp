from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Alignsets_Py_Table_V0_1_0 = CommandToolBuilder(tool="AlignSets.py_table", base_command=["AlignSets.py", "table"], inputs=[ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_failed", input_type=Boolean(optional=True), prefix="--failed", doc=InputDocumentation(doc="If specified create files containing records that fail\nprocessing. (default: False)")), ToolInput(tag="in_delim", input_type=String(optional=True), prefix="--delim", doc=InputDocumentation(doc="DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation blocks, field names and values, and values\nwithin a field, respectively. (default: ('|', '=',\n','))")), ToolInput(tag="in_fasta_file_containing", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="A FASTA file containing primer sequences. (default:\nNone)")), ToolInput(tag="in_explicit_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Explicit output file name. Note, this argument cannot\nbe used with the --failed, --outdir, or --outname\narguments. If unspecified, then the output filename\nwill be based on the input filename(s). (default:\nNone)")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="If specified create a 3' offset table instead\n(default: False)")), ToolInput(tag="in_exec", input_type=String(optional=True), prefix="--exec", doc=InputDocumentation(doc="The name or location of the muscle executable.\n(default: muscle)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignsets_Py_Table_V0_1_0().translate("wdl", allow_empty_container=True)

