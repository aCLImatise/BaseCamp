from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Estimateerror_Py_Barcode_V0_1_0 = CommandToolBuilder(tool="EstimateError.py_barcode", base_command=["EstimateError.py", "barcode"], inputs=[ToolInput(tag="in_list_fastafastq_files", input_type=Array(t=String(), optional=True), prefix="-s", doc=InputDocumentation(doc="A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_delim", input_type=String(optional=True), prefix="--delim", doc=InputDocumentation(doc="DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation blocks, field names and values, and values\nwithin a field, respectively. (default: ('|', '=',\n','))")), ToolInput(tag="in_name_barcode_field", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="The name of the barcode field. (default: BARCODE)"))], outputs=[], container="quay.io/biocontainers/presto:0.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estimateerror_Py_Barcode_V0_1_0().translate("wdl")

