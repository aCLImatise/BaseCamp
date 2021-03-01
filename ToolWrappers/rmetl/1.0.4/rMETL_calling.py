from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String

Rmetl_Calling_V0_1_0 = CommandToolBuilder(tool="rMETL_calling", base_command=["rMETL", "calling"], inputs=[ToolInput(tag="in_homozygous", input_type=Float(optional=True), prefix="--homozygous", doc=InputDocumentation(doc="The mininum score of a genotyping reported as a\nhomozygous.[0.8]")), ToolInput(tag="in_heterozygous", input_type=Float(optional=True), prefix="--heterozygous", doc=InputDocumentation(doc="The mininum score of a genotyping reported as a\nheterozygous.[0.3]")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min_mapq", doc=InputDocumentation(doc="Mininum mapping quality.[20]")), ToolInput(tag="in_clipping_threshold", input_type=Float(optional=True), prefix="--clipping_threshold", doc=InputDocumentation(doc="Mininum threshold of realignment clipping.[0.5]")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample description")), ToolInput(tag="in_mei", input_type=String(optional=True), prefix="--MEI", doc=InputDocumentation(doc="Enables rMETL to display MEI/MED only.[True]")), ToolInput(tag="in_t_jiang_at_hit_dot_edu_dot_cn", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_sam", input_type=String(), position=1, doc=InputDocumentation(doc="Input cluster.sam on STAGE realignment.")), ToolInput(tag="in_reference", input_type=String(), position=2, doc=InputDocumentation(doc="The reference genome in fasta format.")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="Directory to output final callset."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmetl_Calling_V0_1_0().translate("wdl", allow_empty_container=True)

