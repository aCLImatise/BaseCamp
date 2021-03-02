from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Merci_V0_1_0 = CommandToolBuilder(tool="merci", base_command=["merci"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="(1 arg) :    verbosity level  [default '1']")), ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of threads  [default '0']")), ToolInput(tag="in_km_er_size", input_type=Boolean(optional=True), prefix="-kmer-size", doc=InputDocumentation(doc="(1 arg) :    kmer size")), ToolInput(tag="in_assembly", input_type=Boolean(optional=True), prefix="-assembly", doc=InputDocumentation(doc="(1 arg) :    assembly to improve")), ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="-reads", doc=InputDocumentation(doc="(1 arg) :    input reads (fasta/fastq/compressed)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merci_V0_1_0().translate("wdl", allow_empty_container=True)

