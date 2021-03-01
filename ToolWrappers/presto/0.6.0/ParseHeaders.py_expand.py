from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Parseheaders_Py_Expand_V0_1_0 = CommandToolBuilder(tool="ParseHeaders.py_expand", base_command=["ParseHeaders.py", "expand"], inputs=[ToolInput(tag="in_list_fastafastq_files", input_type=Array(t=String(), optional=True), prefix="-s", doc=InputDocumentation(doc="A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)")), ToolInput(tag="in_explicit_output_file", input_type=Array(t=String(), optional=True), prefix="-o", doc=InputDocumentation(doc="Explicit output file name(s). Note, this argument\ncannot be used with the --failed, --outdir, or\n--outname arguments. If unspecified, then the output\nfilename will be based on the input filename(s).\n(default: None)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_failed", input_type=Boolean(optional=True), prefix="--failed", doc=InputDocumentation(doc="If specified create files containing records that fail\nprocessing. (default: False)")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Specify to force output as FASTA rather than FASTQ.\n(default: None)")), ToolInput(tag="in_delim", input_type=String(optional=True), prefix="--delim", doc=InputDocumentation(doc="DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation blocks, field names and values, and values\nwithin a field, respectively. (default: ('|', '=',\n','))")), ToolInput(tag="in_list_expand_default", input_type=Array(t=String(), optional=True), prefix="-f", doc=InputDocumentation(doc="List of fields to expand. (default: None)")), ToolInput(tag="in_sep", input_type=String(optional=True), prefix="--sep", doc=InputDocumentation(doc="The character separating each value in the fields.\n(default: ,)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parseheaders_Py_Expand_V0_1_0().translate("wdl", allow_empty_container=True)

