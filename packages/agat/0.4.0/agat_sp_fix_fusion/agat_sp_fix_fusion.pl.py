from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Agat_Sp_Fix_Fusion_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_fix_fusion.pl", base_command=["agat_sp_fix_fusion.pl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="-gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Input fasta file.")), ToolInput(tag="in_codon", input_type=Int(optional=True), prefix="--codon", doc=InputDocumentation(doc="Codon table to use. [default 1]")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="This is the minimum length of new protein predicted that will be\ntaken in account. By default this value is 100 AA.")), ToolInput(tag="in_stranded", input_type=Int(optional=True), prefix="--stranded", doc=InputDocumentation(doc="By default we predict protein in UTR3 and UTR5 and in both\ndirection. The fusion assumed can be between gene in same\ndirection and in opposite direction. If RNAseq data used during\nthe annotation was stranded, only fusion of close genes oriented\nin same direction are expected. In that case this option should\nbe activated. When activated, we will try to predict protein in\nUTR3 and UTR5 only in the same orientation than the gene\ninvestigated.")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Output verbose information.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_sp_fix_fusion_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Fix_Fusion_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

