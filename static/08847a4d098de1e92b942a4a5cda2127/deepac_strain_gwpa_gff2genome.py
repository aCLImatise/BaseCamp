from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Deepac_Strain_Gwpa_Gff2Genome_V0_1_0 = CommandToolBuilder(tool="deepac_strain_gwpa_gff2genome", base_command=["deepac-strain", "gwpa", "gff2genome"], inputs=[ToolInput(tag="in_gff_three_dir", input_type=Int(), position=0, doc=InputDocumentation(doc="Input directory.")), ToolInput(tag="in_out_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory."))], outputs=[], container="quay.io/biocontainers/deepacstrain:0.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Strain_Gwpa_Gff2Genome_V0_1_0().translate("wdl")

