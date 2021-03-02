from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Loadgenome_Pl_V0_1_0 = CommandToolBuilder(tool="loadGenome.pl", base_command=["loadGenome.pl"], inputs=[ToolInput(tag="in_name", input_type=Int(optional=True), prefix="-name", doc=InputDocumentation(doc="(i.e. hg19, tair10, etc.)")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="-fasta", doc=InputDocumentation(doc="(Single genome sequence, preferrabley soft masked, unzipped)")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="-gtf", doc=InputDocumentation(doc="(Transcript annotation in gtf format, -gff/-gff3 to use them)\n(Always best to use a gtf file whenever possible, gffs can be organized differently...)")), ToolInput(tag="in_org", input_type=Boolean(optional=True), prefix="-org", doc=InputDocumentation(doc="<organism name, ok to use 'null'>")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="(Overwrite any existing genome with the same name)")), ToolInput(tag="in_promoters", input_type=String(optional=True), prefix="-promoters", doc=InputDocumentation(doc="(Create promoter set with genome and gtf files)")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="-id", doc=InputDocumentation(doc="(options: gene, refseq, unigene, ensembl, or custom, default: custom)")), ToolInput(tag="in_version", input_type=String(optional=True), prefix="-version", doc=InputDocumentation(doc="(Assign version, versions starting with 'v' are managed\nby the configureHomer.pl script and my be overwritten, default: custom)")), ToolInput(tag="in_gid", input_type=Boolean(optional=True), prefix="-gid", doc=InputDocumentation(doc="(Use gene_id instead of transcript_id to identify the transcripts from GTF files)")), ToolInput(tag="in_tid", input_type=Boolean(optional=True), prefix="-tid", doc=InputDocumentation(doc="(Use transcript_id instead of gene_id to identify the transcripts from GTF files, default)")), ToolInput(tag="in_ensembl_repeats", input_type=File(optional=True), prefix="-ensemblRepeats", doc=InputDocumentation(doc="(gff3 annotations from ensembl usually have repeat definitions too)")), ToolInput(tag="in_required_parameters_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Loadgenome_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

