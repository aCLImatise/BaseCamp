from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Nome_Filtering_V0_1_0 = CommandToolBuilder(tool="NOMe_filtering", base_command=["NOMe_filtering"], inputs=[ToolInput(tag="in_genome_folder", input_type=File(optional=True), prefix="--genome_folder", doc=InputDocumentation(doc="Enter the genome folder you wish to use to extract sequences from (full path only!). Accepted\nformats are FastA files ending with '.fa' or '.fasta'. Specifying a genome folder path is mandatory.")), ToolInput(tag="in_input", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bismark:0.23.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nome_Filtering_V0_1_0().translate("wdl")

