from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Getdistalpeaks_Pl_V0_1_0 = CommandToolBuilder(tool="getDistalPeaks.pl", base_command=["getDistalPeaks.pl"], inputs=[ToolInput(tag="in_absolute_distance_keep", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<#> (Absolute Distance from TSS to keep, default: 3000)")), ToolInput(tag="in_prox", input_type=Boolean(optional=True), prefix="-prox", doc=InputDocumentation(doc="(keep proximal peaks intead of distal peaks)")), ToolInput(tag="in_intergenic", input_type=Boolean(optional=True), prefix="-intergenic", doc=InputDocumentation(doc="(keep only intergenic, distal peaks)")), ToolInput(tag="in_intragenic", input_type=Boolean(optional=True), prefix="-intragenic", doc=InputDocumentation(doc="(keep only intragenic, distal peaks)")), ToolInput(tag="in_notts", input_type=Boolean(optional=True), prefix="-noTTS", doc=InputDocumentation(doc="(Exclude peaks within 10000 bp of the Transcription termination site)")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="-gtf", doc=InputDocumentation(doc="(custom gene annotation file, -gff/-gff3 can work, but GTF is better)")), ToolInput(tag="in_gid", input_type=Boolean(optional=True), prefix="-gid", doc=InputDocumentation(doc="(parse GTF file by gene_id instead of transcript_id)")), ToolInput(tag="in_targets", input_type=Boolean(optional=True), prefix="-targets", doc=InputDocumentation(doc="(output target genes instead of peaks)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getdistalpeaks_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

