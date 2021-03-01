from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Rgt_Tools_Py_Gtf_To_Bed_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_gtf_to_bed", base_command=["rgt-tools.py", "gtf_to_bed"], inputs=[ToolInput(tag="in_input_gtf_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input GTF file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_define_the_source", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Define the source {ENSEMBL,HAVANA,All}")), ToolInput(tag="in_define_feature_genetranscriptexoncdsutrstartcodonstopcodonselenocysteineall", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Define the feature {gene,transcript,exon,CDS,UTR,start_codon,sto\np_codon,Selenocysteine,All}")), ToolInput(tag="in_define_gene_type", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Define gene type e.g. 'protein_coding' more:\nhttp://www.gencodegenes.org/gencode_biotypes.html")), ToolInput(tag="in_st", input_type=String(optional=True), prefix="-st", doc=InputDocumentation(doc="Define gene status {KNOWN, NOVEL, PUTATIVE,All}")), ToolInput(tag="in_define_gene_list", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="Define the gene list for filtering, default is None.")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="Use gene ID as region name, instead of gene symbol.")), ToolInput(tag="in_save_exons_entries", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Save exons into entries with block in BED"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Gtf_To_Bed_V0_1_0().translate("wdl", allow_empty_container=True)

