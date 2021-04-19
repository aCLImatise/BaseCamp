from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_Bowtie_Output_Pl_V0_1_0 = CommandToolBuilder(tool="convert_bowtie_output.pl", base_command=["convert_bowtie_output.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Bowtie_Output_Pl_V0_1_0().translate("wdl")

