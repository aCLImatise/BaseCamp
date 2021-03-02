from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean, Int

Splitseq_Py_Count_V0_1_0 = CommandToolBuilder(tool="SplitSeq.py_count", base_command=["SplitSeq.py", "count"], inputs=[ToolInput(tag="in_list_fastafastq_files", input_type=Array(t=String(), optional=True), prefix="-s", doc=InputDocumentation(doc="A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify to changes the output directory to the\nlocation specified. The input file directory is used\nif this is not specified. (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Changes the prefix of the successfully processed\noutput file to the string specified. May not be\nspecified with multiple input files. (default: None)")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Specify to force output as FASTA rather than FASTQ.\n(default: None)")), ToolInput(tag="in_maximum_number_defaultnone", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Maximum number of sequences in each new file (default:\nNone)\n")), ToolInput(tag="in_max_count", input_type=String(), position=0, doc=InputDocumentation(doc="Splits sequences files by number of records."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitseq_Py_Count_V0_1_0().translate("wdl", allow_empty_container=True)

