from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Alfred_Count_Rna_V0_1_0 = CommandToolBuilder(tool="alfred_count_rna", base_command=["alfred", "count_rna"], inputs=[ToolInput(tag="in_arg_min_mapping", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --map-qual ] arg (=10)           min. mapping quality")), ToolInput(tag="in_arg_strandspecific_counting", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --stranded ] arg (=0)            strand-specific counting (0:\nunstranded, 1: stranded, 2: reverse\nstranded)")), ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --normalize ] arg (=raw)         normalization [raw|fpkm|fpkm_uq]")), ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (='gene.count')  output file")), ToolInput(tag="in_count_ambiguous_readsd", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[ --ambiguous ]                    count ambiguous readsd")), ToolInput(tag="in_arg_gtfgff_file", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --gtf ] arg                      gtf/gff3 file")), ToolInput(tag="in_arg_geneid_gtfgff", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --id ] arg (=gene_id)            gtf/gff3 attribute")), ToolInput(tag="in_arg_exon_feature", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --feature ] arg (=exon)          gtf/gff3 feature")), ToolInput(tag="in_arg_bed_file", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --bed ] arg                      bed file")), ToolInput(tag="in_aligned_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (='gene.count')  output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Count_Rna_V0_1_0().translate("wdl", allow_empty_container=True)

