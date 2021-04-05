from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Agat_Convert_Bed2Gff_Pl_V0_1_0 = CommandToolBuilder(tool="agat_convert_bed2gff.pl", base_command=["agat_convert_bed2gff.pl"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Input bed file that will be converted.")), ToolInput(tag="in_source", input_type=Boolean(optional=True), prefix="--source", doc=InputDocumentation(doc="The source informs about the tool used to produce the data and\nis stored in 2nd field of a gff file. Example:\nStringtie,Maker,Augustus,etc. [default: data]")), ToolInput(tag="in_primary_tag", input_type=Boolean(optional=True), prefix="--primary_tag", doc=InputDocumentation(doc="The primary_tag corresponds to the data type and is stored in\n3rd field of a gff file. Example: gene,mRNA,CDS,etc. [default:\ngene]")), ToolInput(tag="in_inflate_off", input_type=Boolean(optional=True), prefix="--inflate_off", doc=InputDocumentation(doc="By default we inflate the block fields (blockCount, blockSizes,\nblockStarts) to create subfeatures of the main feature\n(primary_tag). The type of subfeature created is based on the\ninflate_type parameter. If you do not want this inflating\nbehaviour you can deactivate it by using the --inflate_off\noption.")), ToolInput(tag="in_inflate_type", input_type=Boolean(optional=True), prefix="--inflate_type", doc=InputDocumentation(doc="Feature type (3rd column in gff) created when inflate parameter\nactivated [default: exon].")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="add verbosity")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_convert_bed_two_gff_do_tpl", input_type=Int(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Convert_Bed2Gff_Pl_V0_1_0().translate("wdl")

