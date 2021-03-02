from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

O_Create_Gg_Alignment_Template_From_Taxon_V0_1_0 = CommandToolBuilder(tool="o_create_GG_alignment_template_from_taxon", base_command=["o-create-GG-alignment-template-from-taxon"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to the output folder\n")), ToolInput(tag="in_create_greengenes_alignment", input_type=String(), position=0, doc=InputDocumentation(doc="Create GreenGenes Alignment Template")), ToolInput(tag="in_tax_on", input_type=String(), position=0, doc=InputDocumentation(doc="'Taxon' name to be searched in GreenGenes")), ToolInput(tag="in_otu_id_to_green_genes", input_type=String(), position=1, doc=InputDocumentation(doc="Path to the 'otu_id_to_greengenes' file. You can\ndownload it from 'http://greengenes.lbl.gov/Download/O\nTUs/gg_otus_6oct2010/taxonomies/otu_id_to_greengenes.t\nxt'")), ToolInput(tag="in_path_greengenes_alignment", input_type=String(), position=2, doc=InputDocumentation(doc="Path to the GreenGenes alignment file. You can\ndownload it from 'http://greengenes.lbl.gov/Download/O\nTUs/gg_otus_6oct2010/rep_set/gg_97_otus_6oct2010_align\ned.fasta'"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to the output folder\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Create_Gg_Alignment_Template_From_Taxon_V0_1_0().translate("wdl", allow_empty_container=True)

