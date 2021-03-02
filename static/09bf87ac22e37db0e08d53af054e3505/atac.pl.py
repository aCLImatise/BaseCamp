from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Atac_Pl_V0_1_0 = CommandToolBuilder(tool="atac.pl", base_command=["atac.pl"], inputs=[ToolInput(tag="in_genome_dir", input_type=File(optional=True), prefix="-genomedir", doc=InputDocumentation(doc="-- path to the GENOMES directory")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="-numthreads", doc=InputDocumentation(doc="-- number of threads to use per search\n(slight increase in memory usage)")), ToolInput(tag="in_meryl_only", input_type=Boolean(optional=True), prefix="-merylonly", doc=InputDocumentation(doc="-- only run the meryl components")), ToolInput(tag="in_meryl_threads", input_type=Int(optional=True), prefix="-merylthreads", doc=InputDocumentation(doc="-- number of threads to use for meryl")), ToolInput(tag="in_same_species", input_type=Boolean(optional=True), prefix="-samespecies", doc=InputDocumentation(doc="-- use magic values for same species")), ToolInput(tag="in_cross_species", input_type=Boolean(optional=True), prefix="-crossspecies", doc=InputDocumentation(doc="-- use guesses for different species")), ToolInput(tag="in_segment_id", input_type=String(optional=True), prefix="-segmentid", doc=InputDocumentation(doc="-- only run segment with id x\n(don't use)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atac_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

