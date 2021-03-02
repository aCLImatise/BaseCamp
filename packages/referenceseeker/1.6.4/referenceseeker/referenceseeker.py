from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean

Referenceseeker_V0_1_0 = CommandToolBuilder(tool="referenceseeker", base_command=["referenceseeker"], inputs=[ToolInput(tag="in_crg", input_type=Int(optional=True), prefix="--crg", doc=InputDocumentation(doc="Max number of candidate reference genomes to pass kmer\nprefilter (default = 100)")), ToolInput(tag="in_ani", input_type=Float(optional=True), prefix="--ani", doc=InputDocumentation(doc="ANI threshold (default = 0.95)")), ToolInput(tag="in_conserved_dna", input_type=Float(optional=True), prefix="--conserved-dna", doc=InputDocumentation(doc="Conserved DNA threshold (default = 0.69)")), ToolInput(tag="in_unfiltered", input_type=Boolean(optional=True), prefix="--unfiltered", doc=InputDocumentation(doc="Set kmer prefilter to extremely conservative values\nand skip species level ANI cutoffs (ANI >= 0.95 and\nconserved DNA >= 0.69")), ToolInput(tag="in_bidirectional", input_type=Boolean(optional=True), prefix="--bidirectional", doc=InputDocumentation(doc="Compute bidirectional ANI/conserved DNA values\n(default = False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print verbose information")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of used threads (default = number of available\nCPU cores)"))], outputs=[], container="quay.io/biocontainers/referenceseeker:1.6.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Referenceseeker_V0_1_0().translate("wdl")

