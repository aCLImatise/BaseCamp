from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_And_Plot_Chromeister_Sh_V0_1_0 = CommandToolBuilder(tool="run_and_plot_chromeister.sh", base_command=["run_and_plot_chromeister.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/chromeister:1.5.a--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_And_Plot_Chromeister_Sh_V0_1_0().translate("wdl")

