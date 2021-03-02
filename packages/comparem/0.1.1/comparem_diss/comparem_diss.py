from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Comparem_Diss_V0_1_0 = CommandToolBuilder(tool="comparem_diss", base_command=["comparem", "diss"], inputs=[ToolInput(tag="in_metric", input_type=String(optional=True), prefix="--metric", doc=InputDocumentation(doc="distance metric to use (default: euclidean)")), ToolInput(tag="in_full_matrix", input_type=Boolean(optional=True), prefix="--full_matrix", doc=InputDocumentation(doc="output full dissimilarity matrix")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_profile_file", input_type=String(), position=0, doc=InputDocumentation(doc="file with usage profile for each genome")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="output file with pairwise dissimilarity between")), ToolInput(tag="in_genomes", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comparem_Diss_V0_1_0().translate("wdl", allow_empty_container=True)

