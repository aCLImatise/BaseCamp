from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Genepredtobiggenepred_V0_1_0 = CommandToolBuilder(tool="genePredToBigGenePred", base_command=["genePredToBigGenePred"], inputs=[ToolInput(tag="in_known", input_type=Boolean(optional=True), prefix="-known", doc=InputDocumentation(doc="input file is a genePred in knownGene format")), ToolInput(tag="in_score", input_type=File(optional=True), prefix="-score", doc=InputDocumentation(doc="scores is two column file with id's mapping to scores")), ToolInput(tag="in_gene_names", input_type=File(optional=True), prefix="-geneNames", doc=InputDocumentation(doc="geneNames is a three column file with id's mapping to two gene names")), ToolInput(tag="in_colors", input_type=File(optional=True), prefix="-colors", doc=InputDocumentation(doc="colors is a four column file with id's mapping to r,g,b")), ToolInput(tag="in_cds", input_type=File(optional=True), prefix="-cds", doc=InputDocumentation(doc="cds is a five column file with id's mapping to cds status codes and exonFrames (see knownCds.as)")), ToolInput(tag="in_file_do_tgp", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_stdout", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genepredtobiggenepred_V0_1_0().translate("wdl", allow_empty_container=True)

