from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Bowtie2_Inspect_V0_1_0 = CommandToolBuilder(tool="bowtie2_inspect", base_command=["bowtie2-inspect"], inputs=[ToolInput(tag="in_large_index", input_type=Boolean(optional=True), prefix="--large-index", doc=InputDocumentation(doc="force inspection of the 'large' index, even if a\n'small' one is present.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="use the debug binary; slower, assertions enabled")), ToolInput(tag="in_sanitized", input_type=Boolean(optional=True), prefix="--sanitized", doc=InputDocumentation(doc="use sanitized binary; slower, uses ASan and/or UBSan")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output (for debugging)")), ToolInput(tag="in_across", input_type=Int(optional=True), prefix="--across", doc=InputDocumentation(doc="Number of characters across in FASTA output (default: 60)")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="--names", doc=InputDocumentation(doc="Print reference sequence names only")), ToolInput(tag="in_summary", input_type=Boolean(optional=True), prefix="--summary", doc=InputDocumentation(doc="Print summary incl. ref names, lengths, index properties"))], outputs=[], container="quay.io/biocontainers/bowtie2:2.4.2--py38h1c8e9b9_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bowtie2_Inspect_V0_1_0().translate("wdl")

