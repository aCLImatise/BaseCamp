from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File, Int, Boolean

Biopet_Scatterregions_V0_1_0 = CommandToolBuilder(tool="biopet_scatterregions", base_command=["biopet-scatterregions"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_reference_fast_a", input_type=File(optional=True), prefix="--referenceFasta", doc=InputDocumentation(doc="Reference fasta file, (dict file should be next to it)")), ToolInput(tag="in_scatter_size", input_type=Int(optional=True), prefix="--scatterSize", doc=InputDocumentation(doc="Approximately scatter size, tool will make all scatters the same size. default = 1000000")), ToolInput(tag="in_regions", input_type=File(optional=True), prefix="--regions", doc=InputDocumentation(doc="If given only regions in the given bed file will be used for scattering")), ToolInput(tag="in_not_combine_contigs", input_type=Boolean(optional=True), prefix="--notCombineContigs", doc=InputDocumentation(doc="If set each scatter can only contain 1 contig")), ToolInput(tag="in_max_contigs_in_scatter_job", input_type=Int(optional=True), prefix="--maxContigsInScatterJob", doc=InputDocumentation(doc="If set each scatter can only contain 1 contig")), ToolInput(tag="in_bam_file", input_type=Int(optional=True), prefix="--bamFile", doc=InputDocumentation(doc="When given the regions will be scattered based on number of reads in the index file")), ToolInput(tag="in_not_split_contigs", input_type=Boolean(optional=True), prefix="--notSplitContigs", doc=InputDocumentation(doc="When this option is set contigs are not split.")), ToolInput(tag="in_scatter_regions", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biopet_Scatterregions_V0_1_0().translate("wdl", allow_empty_container=True)

