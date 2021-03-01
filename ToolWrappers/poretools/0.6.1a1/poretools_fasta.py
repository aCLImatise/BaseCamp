from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Poretools_Fasta_V0_1_0 = CommandToolBuilder(tool="poretools_fasta", base_command=["poretools", "fasta"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Which type of FASTQ entries should be reported?\nDef.=all")), ToolInput(tag="in_start", input_type=String(optional=True), prefix="--start", doc=InputDocumentation(doc="Only report reads from after start timestamp")), ToolInput(tag="in_end", input_type=String(optional=True), prefix="--end", doc=InputDocumentation(doc="Only report reads from before end timestamp")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum read length for FASTA entry to be reported.")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="--max-length", doc=InputDocumentation(doc="Maximum read length for FASTA entry to be reported.")), ToolInput(tag="in_high_quality", input_type=Boolean(optional=True), prefix="--high-quality", doc=InputDocumentation(doc="Only report reads with more complement events than")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="The input FAST5 files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poretools_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

