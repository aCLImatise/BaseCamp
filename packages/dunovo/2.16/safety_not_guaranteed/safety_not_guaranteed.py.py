from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Safety_Not_Guaranteed_Py_V0_1_0 = CommandToolBuilder(tool="safety_not_guaranteed.py", base_command=["safety-not-guaranteed.py"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output FASTQ reads to this file. If not given,\nwill print to stdout.")), ToolInput(tag="in_phred_score", input_type=Int(optional=True), prefix="--phred-score", doc=InputDocumentation(doc="The quality score to give to all bases. There is no\nmeaningful quality score we can automatically give, so\nyou will have to specify an artificial one. A good\nchoice is 40, the maximum score normally output by\nsequencers.")), ToolInput(tag="in_qual_format", input_type=String(optional=True), prefix="--qual-format", doc=InputDocumentation(doc="FASTQ quality score format. Sanger scores are assumed\nto begin at '33' (!). Default: sanger.")), ToolInput(tag="in_to_fast_a", input_type=Boolean(optional=True), prefix="--to-fasta", doc=InputDocumentation(doc="Convert FASTQ to FASTA instead. This assumes the input\nis FASTQ.")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Print log messages to this file instead of to stderr.\nWarning: Will overwrite the file.")), ToolInput(tag="in_reads_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="Input FASTA reads. Omit to read from stdin."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output FASTQ reads to this file. If not given,\nwill print to stdout."))], container="quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Safety_Not_Guaranteed_Py_V0_1_0().translate("wdl")

