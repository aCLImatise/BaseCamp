from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Fqc_V0_1_0 = CommandToolBuilder(tool="fqc", base_command=["fqc"], inputs=[ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="The input FASTQ file to use.")), ToolInput(tag="in_length_k_kmers", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="The length k of k-mers for k-mer counting. [default: 5]")), ToolInput(tag="in_creates_output_file", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="Creates an output file for usage with MultiQC under the given path."))], outputs=[ToolOutput(tag="out_creates_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_creates_output_file", type_hint=File()), doc=OutputDocumentation(doc="Creates an output file for usage with MultiQC under the given path."))], container="quay.io/biocontainers/fastqc-rs:0.2.1--h374f2b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fqc_V0_1_0().translate("wdl")

