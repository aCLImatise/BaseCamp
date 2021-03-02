from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Svmerge_V0_1_0 = CommandToolBuilder(tool="SVmerge", base_command=["SVmerge"], inputs=[ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a prefix to be used to create output file names: files of\ndistance metric values will be named 'prefix.distances' and the\noutput, clustered VCF file will be named 'prefix.clustered.vcf'.")), ToolInput(tag="in_variants", input_type=Boolean(optional=True), prefix="--variants", doc=InputDocumentation(doc="Specify the path to a VCF file of variants to merge. These variants\nwill be considered in combination with any specified using the --fof\noption.")), ToolInput(tag="in_f_of", input_type=Boolean(optional=True), prefix="--fof", doc=InputDocumentation(doc="Specify the path to a file of files with paths to VCF files of\nvariants to merge. These variants will be considered in combination\nwith any specified using the --variants option.")), ToolInput(tag="in_max_dist", input_type=Boolean(optional=True), prefix="--maxdist", doc=InputDocumentation(doc="Specify the maximum distance in bases between the positions of SVs\nthat can be merged.")), ToolInput(tag="in_variant_delimiter", input_type=Boolean(optional=True), prefix="--variantdelimiter", doc=InputDocumentation(doc="Specify the ASCII character to be used as a delimiter when forming\nclusters. This must be a character that is not contained in any of\nthe cluster IDs in order for SVmerge to give reliable results.\n")), ToolInput(tag="in_distance_file", input_type=File(optional=True), prefix="--distance_file", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Specify a prefix to be used to create output file names: files of\ndistance metric values will be named 'prefix.distances' and the\noutput, clustered VCF file will be named 'prefix.clustered.vcf'."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svmerge_V0_1_0().translate("wdl", allow_empty_container=True)

