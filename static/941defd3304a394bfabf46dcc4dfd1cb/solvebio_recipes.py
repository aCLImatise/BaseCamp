from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Solvebio_Recipes_V0_1_0 = CommandToolBuilder(tool="solvebio_recipes", base_command=["solvebio-recipes"], inputs=[], outputs=[], container="quay.io/biocontainers/solvebio:2.16.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Solvebio_Recipes_V0_1_0().translate("wdl")

