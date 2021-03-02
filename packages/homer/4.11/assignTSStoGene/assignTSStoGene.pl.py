from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Assigntsstogene_Pl_V0_1_0 = CommandToolBuilder(tool="assignTSStoGene.pl", base_command=["assignTSStoGene.pl"], inputs=[ToolInput(tag="in_genome", input_type=String(optional=True), prefix="-genome", doc=InputDocumentation(doc="(use default homer gene annotation/RefSeq)")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="-gtf", doc=InputDocumentation(doc="(use custom gene annotation, can also use -gff or -gff3)")), ToolInput(tag="in_gid", input_type=Boolean(optional=True), prefix="-gid", doc=InputDocumentation(doc="(use gene_id with GTF file)")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="-bed", doc=InputDocumentation(doc="(use custom gene annotation in bed/peak file format)")), ToolInput(tag="in_ref_tss", input_type=File(optional=True), prefix="-refTSS", doc=InputDocumentation(doc="(only supply reference TSS positions)")), ToolInput(tag="in_max_dist_gene", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<#> (max dist from tss to gene allowed, default: 1000)")), ToolInput(tag="in_no_keep_ref", input_type=Boolean(optional=True), prefix="-nokeepRef", doc=InputDocumentation(doc="(don't keep reference promoters not found in the tss peak file, default: keep)")), ToolInput(tag="in_keep_orphans", input_type=Boolean(optional=True), prefix="-keepOrphans", doc=InputDocumentation(doc="(keep TSS without reference annotation, default: remove)")), ToolInput(tag="in_bed_out", input_type=File(optional=True), prefix="-bedOut", doc=InputDocumentation(doc="(output genes with new 5'end)")), ToolInput(tag="in_three_p", input_type=Boolean(optional=True), prefix="-3p", doc=InputDocumentation(doc="(do 3' end assignment instead of TSS, assumes peaks are on - strand rel to gene)")), ToolInput(tag="in_tss_peak_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assigntsstogene_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

