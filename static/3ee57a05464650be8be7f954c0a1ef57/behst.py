from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Behst_V0_1_0 = CommandToolBuilder(tool="behst", base_command=["behst"], inputs=[ToolInput(tag="in_target_extension", input_type=Int(optional=True), prefix="--target-extension", doc=InputDocumentation(doc="extend target regions by BP base pairs (default 9400)")), ToolInput(tag="in_query_extension", input_type=Int(optional=True), prefix="--query-extension", doc=InputDocumentation(doc="extend query regions by BP base pairs (default 24100)")), ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="path to directory with reference data (default\n~/.local/share/behst)")), ToolInput(tag="in_gene_annotation_file", input_type=File(optional=True), prefix="--gene-annotation-file", doc=InputDocumentation(doc="path of gene annotation file (GTF format, default\nDATADIR/gencode.v19.annotation_withproteinids.gtf).")), ToolInput(tag="in_transcript_file", input_type=File(optional=True), prefix="--transcript-file", doc=InputDocumentation(doc="path to the principal transcript file (BED format,\ndefault DATADIR/appris_data_principal.bed)")), ToolInput(tag="in_interaction_file", input_type=File(optional=True), prefix="--interaction-file", doc=InputDocumentation(doc="path to the chromatin interactions file (HICCUPS\nFormat, default DATADIR/hic_8celltypes.hiccups).")), ToolInput(tag="in_no_g_profiler", input_type=Boolean(optional=True), prefix="--no-gprofiler", doc=InputDocumentation(doc="If activated, generate the gene list and do not call\ng:ProfileR)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Behst_V0_1_0().translate("wdl", allow_empty_container=True)

