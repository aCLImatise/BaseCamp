from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Rsq_V0_1_0 = CommandToolBuilder(tool="rsq", base_command=["rsq"], inputs=[ToolInput(tag="in_apply_frequency_cutoff", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=": apply a frequency cutoff")), ToolInput(tag="in_test_significance_correlation", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc=": test significance of correlation of")), ToolInput(tag="in_maximum_distance_bw", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc=": maximum distance b/w markers\nLD with distance with <int> permutations\n")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsq_V0_1_0().translate("wdl", allow_empty_container=True)

