from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Plot_Cog_Abundance_R_V0_1_0 = CommandToolBuilder(tool="Plot_COG_Abundance.R", base_command=["Plot_COG_Abundance.R"], inputs=[ToolInput(tag="in_lowess", input_type=String(), position=0, doc=InputDocumentation(doc="Error in file(file, 'rt') : cannot open the connection"))], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Cog_Abundance_R_V0_1_0().translate("wdl")

