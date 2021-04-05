from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Agat_Convert_Sp_Gff2Tsv_Pl_V0_1_0 = CommandToolBuilder(tool="agat_convert_sp_gff2tsv.pl", base_command=["agat_convert_sp_gff2tsv.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_ct", input_type=String(optional=True), prefix="--ct", doc=InputDocumentation(doc="When the features doesn't have Parent/ID relationships, the\nparser will try to group features using a common/shared\nattribute (i.e. a locus tag.). By default locus_tag and gene_id.\nYou can provide another specific common/shared attribute using\nthis option.")), ToolInput(tag="in_merge_loci", input_type=File(optional=True), prefix="--merge_loci", doc=InputDocumentation(doc="Merge loci parameter, default deactivated. You turn on the\nparameter if you want to merge loci into one locus when they\noverlap. (at CDS level for mRNA, at exon level for other level2\nfeatures. Strand has to be the same). Prokaryote can have\noverlaping loci so it should not use it for prokaryote\nannotation. In eukaryote, loci rarely overlap. Overlaps could be\ndue to error in the file, mRNA can be merged under the same\nparent gene if you acticate the option.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_convert_sp_gfftwotsvdotpl", input_type=Int(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Convert_Sp_Gff2Tsv_Pl_V0_1_0().translate("wdl")

