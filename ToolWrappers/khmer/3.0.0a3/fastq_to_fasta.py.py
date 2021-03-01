from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fastq_To_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="fastq_to_fasta.py", base_command=["fastq-to-fasta.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The name of the output FASTA sequence file. (default:\n<_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)")), ToolInput(tag="in_n_keep", input_type=Boolean(optional=True), prefix="--n_keep", doc=InputDocumentation(doc="Option to keep reads containing 'N's in input_sequence\nfile. Default is to drop reads (default: False)")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress output using gzip (default: False)")), ToolInput(tag="in_bzip", input_type=Boolean(optional=True), prefix="--bzip", doc=InputDocumentation(doc="Compress output using bzip2 (default: False)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The name of the output FASTA sequence file. (default:\n<_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_To_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

