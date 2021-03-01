from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Annotaterefseqsequenceswithuniquetaxonids_Pl_V0_1_0 = CommandToolBuilder(tool="annotateRefSeqSequencesWithUniqueTaxonIDs.pl", base_command=["annotateRefSeqSequencesWithUniqueTaxonIDs.pl"], inputs=[ToolInput(tag="in_taxonomy_in_directory", input_type=String(optional=True), prefix="--taxonomyInDirectory", doc=InputDocumentation(doc="")), ToolInput(tag="in_refseq_directory", input_type=String(optional=True), prefix="--refSeqDirectory", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotaterefseqsequenceswithuniquetaxonids_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

