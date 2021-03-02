from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Ezclermont_V0_1_0 = CommandToolBuilder(tool="ezclermont", base_command=["ezclermont"], inputs=[ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min_length", doc=InputDocumentation(doc="minimum contig length to consider.default: 500")), ToolInput(tag="in_experiment_name", input_type=File(optional=True), prefix="--experiment_name", doc=InputDocumentation(doc="name of experiment; defaults to file name without\nextension. If reading from stdin, uses the first\ncontig's ID")), ToolInput(tag="in_no_partial", input_type=Boolean(optional=True), prefix="--no_partial", doc=InputDocumentation(doc="If scanning contigs, breaks between contigs could\npotentially contain your sequence of interest. if\n--no_partial, these plausible partial matches will NOT\nbe reported; default behaviour is to consider partial\nhits if the assembly has more than 4 sequnces(ie, no\npartial matches for complete genomes, allowing for 1\nchromasome and several plasmids)"))], outputs=[], container="quay.io/biocontainers/ezclermont:0.6.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ezclermont_V0_1_0().translate("wdl")

