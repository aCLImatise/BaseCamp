from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cactus_Coverage_V0_1_0 = CommandToolBuilder(tool="cactus_coverage", base_command=["cactus_coverage"], inputs=[ToolInput(tag="in_only_contig_one", input_type=Boolean(optional=True), prefix="--onlyContig1", doc=InputDocumentation(doc=": Only print coverage that occurs when a sequence from the fasta is in the contig1 field of the CIGAR.")), ToolInput(tag="in_only_contig_two", input_type=Boolean(optional=True), prefix="--onlyContig2", doc=InputDocumentation(doc=": Only print coverage that occurs when a sequence from the fasta is in the contig2 field of the CIGAR.")), ToolInput(tag="in_depth_by_id", input_type=Boolean(optional=True), prefix="--depthById", doc=InputDocumentation(doc=": Assume that headers have an 'id=N|' prefix, where N is an integer. Score coverage depth by the number of different prefixes that align to a region, rather than the total number of alignments. Uses much more memory than the standard mode.")), ToolInput(tag="in_from", input_type=File(optional=True), prefix="--from", doc=InputDocumentation(doc=": Only consider alignments for which one sequence is in fastaFile and the other is in fromFastaFile."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

