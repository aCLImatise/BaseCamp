from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Purge_Haplotigs_Hist_V0_1_0 = CommandToolBuilder(tool="purge_haplotigs_hist", base_command=["purge_haplotigs", "hist"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="-bam", doc=InputDocumentation(doc="BAM file of aligned and sorted reads/subreads to the reference")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="-genome", doc=InputDocumentation(doc="Reference FASTA for the BAM file.")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="Number of worker threads to use, DEFAULT = 4, MINIMUM = 2")), ToolInput(tag="in_depth", input_type=Boolean(optional=True), prefix="-depth", doc=InputDocumentation(doc="Maximum cutoff for depth. DEFAULT = 200, increase if needed,\nset much higher than your expected average coverage.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Purge_Haplotigs_Hist_V0_1_0().translate("wdl", allow_empty_container=True)

