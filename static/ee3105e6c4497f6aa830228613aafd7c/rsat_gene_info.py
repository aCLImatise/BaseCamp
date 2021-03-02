from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Rsat_Gene_Info_V0_1_0 = CommandToolBuilder(tool="rsat_gene_info", base_command=["rsat", "gene-info"], inputs=[ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="-help", doc=InputDocumentation(doc="display options")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose")), ToolInput(tag="in_org", input_type=Boolean(optional=True), prefix="-org", doc=InputDocumentation(doc="organism")), ToolInput(tag="in_query_reiterated_same", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="query. can be reiterated within the same command line")), ToolInput(tag="in_query_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="query file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="-full", doc=InputDocumentation(doc="full match only (no substring matching)")), ToolInput(tag="in_no_query", input_type=Boolean(optional=True), prefix="-noquery", doc=InputDocumentation(doc="do not print the query at the beginning of each line")), ToolInput(tag="in_descr", input_type=Boolean(optional=True), prefix="-descr", doc=InputDocumentation(doc="match queries against the description\n(in addition to gene ID and  names)")), ToolInput(tag="in_feat_type", input_type=Boolean(optional=True), prefix="-feattype", doc=InputDocumentation(doc="Feature type.\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon")), ToolInput(tag="in_gene_info", input_type=String(), position=0, doc=InputDocumentation(doc="USAGE")), ToolInput(tag="in_genomics", input_type=String(), position=0, doc=InputDocumentation(doc="OPTIONS")), ToolInput(tag="in_query_dot", input_type=String(), position=0, doc=InputDocumentation(doc="gene-info -org yeast -i query_file.txt"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Gene_Info_V0_1_0().translate("wdl", allow_empty_container=True)

