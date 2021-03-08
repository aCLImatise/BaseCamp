from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phyloseq_Beta_Diversity_Rmd_V0_1_0 = CommandToolBuilder(tool="phyloseq_beta_diversity.Rmd", base_command=["phyloseq_beta_diversity.Rmd"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloseq_Beta_Diversity_Rmd_V0_1_0().translate("wdl")

