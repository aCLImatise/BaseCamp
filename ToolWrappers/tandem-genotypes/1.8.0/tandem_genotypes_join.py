from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Tandem_Genotypes_Join_V0_1_0 = CommandToolBuilder(tool="tandem_genotypes_join", base_command=["tandem-genotypes-join"], inputs=[ToolInput(tag="in_shrink", input_type=Boolean(optional=True), prefix="--shrink", doc=InputDocumentation(doc="shrink the output")), ToolInput(tag="in_mean", input_type=Int(optional=True), prefix="--mean", doc=InputDocumentation(doc="type of mean for positive/patient/case files:\n1=ordinary, 3=cubic (default=1)")), ToolInput(tag="in_scores", input_type=File(optional=True), prefix="--scores", doc=InputDocumentation(doc="importance scores for gene parts")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="show more details")), ToolInput(tag="in_positive_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/tandem-genotypes:1.8.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tandem_Genotypes_Join_V0_1_0().translate("wdl")

