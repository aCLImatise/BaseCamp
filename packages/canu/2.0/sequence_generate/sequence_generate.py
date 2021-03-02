from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, Float

Sequence_Generate_V0_1_0 = CommandToolBuilder(tool="sequence_generate", base_command=["sequence", "generate"], inputs=[ToolInput(tag="in_min", input_type=Int(optional=True), prefix="-min", doc=InputDocumentation(doc="minimum sequence length")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="-max", doc=InputDocumentation(doc="maximum sequence length")), ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="-sequences", doc=InputDocumentation(doc="generate N sequences")), ToolInput(tag="in_bases", input_type=Int(optional=True), prefix="-bases", doc=InputDocumentation(doc="generate at least B bases, no more than B+maxLength-1 bases.")), ToolInput(tag="in_gaussian", input_type=Boolean(optional=True), prefix="-gaussian", doc=InputDocumentation(doc="99.73% of the reads (3 standard deviations) will be between min and max")), ToolInput(tag="in_mirror", input_type=Float(optional=True), prefix="-mirror", doc=InputDocumentation(doc="sets GC/AT composition (default 0.50)")), ToolInput(tag="in_at", input_type=Float(optional=True), prefix="-at", doc=InputDocumentation(doc="sets GC/AT composition (default 0.50)")), ToolInput(tag="in_sets_frequency_bases", input_type=Float(optional=True), prefix="-a", doc=InputDocumentation(doc="sets frequency of A bases (default 0.25)")), ToolInput(tag="in_sets_frequency_c", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="sets frequency of C bases (default 0.25)")), ToolInput(tag="in_sets_frequency_g", input_type=Float(optional=True), prefix="-g", doc=InputDocumentation(doc="sets frequency of G bases (default 0.25)")), ToolInput(tag="in_sets_frequency_t", input_type=Float(optional=True), prefix="-t", doc=InputDocumentation(doc="sets frequency of T bases (default 0.25)")), ToolInput(tag="in_sequence", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mode", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequence_Generate_V0_1_0().translate("wdl", allow_empty_container=True)

