from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Smof_Subseq_V0_1_0 = CommandToolBuilder(tool="smof_subseq", base_command=["smof", "subseq"], inputs=[ToolInput(tag="in_n__bounds", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="N, --bounds N N  from and to values (indexed from 1)")), ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="get bounds from this gff3 file")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="With --gff, keep sequences with no matches")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="color subsequence (do not extract)")), ToolInput(tag="in_annotate", input_type=Boolean(optional=True), prefix="--annotate", doc=InputDocumentation(doc="Append the subsequence interval to the defline")), ToolInput(tag="in_force_color", input_type=Boolean(optional=True), prefix="--force-color", doc=InputDocumentation(doc="print in color even to non-tty (DANGEROUS)")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container="quay.io/biocontainers/smof:2.21.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Subseq_V0_1_0().translate("wdl")

