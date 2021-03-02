from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Galah_Cluster_Validate_V0_1_0 = CommandToolBuilder(tool="galah_cluster_validate", base_command=["galah", "cluster-validate"], inputs=[ToolInput(tag="in_ani", input_type=Int(optional=True), prefix="--ani", doc=InputDocumentation(doc="ANI to validate against [default: 99]")), ToolInput(tag="in_cluster_file", input_type=File(optional=True), prefix="--cluster-file", doc=InputDocumentation(doc="Output of 'cluster' subcommand")), ToolInput(tag="in_min_aligned_fraction", input_type=Int(optional=True), prefix="--min-aligned-fraction", doc=InputDocumentation(doc="Min aligned fraction of two genomes for clustering [default: 50]"))], outputs=[], container="quay.io/biocontainers/galah:0.3.0--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Galah_Cluster_Validate_V0_1_0().translate("wdl")

