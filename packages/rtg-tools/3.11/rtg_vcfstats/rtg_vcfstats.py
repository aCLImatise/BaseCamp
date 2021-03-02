from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Rtg_Vcfstats_V0_1_0 = CommandToolBuilder(tool="rtg_vcfstats", base_command=["rtg", "vcfstats"], inputs=[ToolInput(tag="in_known", input_type=Boolean(optional=True), prefix="--known", doc=InputDocumentation(doc="only calculate statistics for known variants (Default is\nto ignore known/novel status)")), ToolInput(tag="in_novel", input_type=Boolean(optional=True), prefix="--novel", doc=InputDocumentation(doc="only calculate statistics for novel variants (Default is\nto ignore known/novel status)")), ToolInput(tag="in_sample", input_type=Int(optional=True), prefix="--sample", doc=InputDocumentation(doc="only calculate statistics for the specified sample\n(Default is to include all samples). May be specified 0\nor more times")), ToolInput(tag="in_allele_lengths", input_type=Int(optional=True), prefix="--allele-lengths", doc=InputDocumentation(doc="variant length histogram")), ToolInput(tag="in_times", input_type=String(), position=0, doc=InputDocumentation(doc="Reporting"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Vcfstats_V0_1_0().translate("wdl", allow_empty_container=True)

