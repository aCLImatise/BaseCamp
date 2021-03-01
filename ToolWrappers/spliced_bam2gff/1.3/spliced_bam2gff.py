from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, Int

Spliced_Bam2Gff_V0_1_0 = CommandToolBuilder(tool="spliced_bam2gff", base_command=["spliced_bam2gff"], inputs=[ToolInput(tag="in_write_output_partitioned", input_type=Directory(optional=True), prefix="-L", doc=InputDocumentation(doc="Write output partitioned into 'loci' to this directory. Turns of output to stdout.")), ToolInput(tag="in_input_is_minimap", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="Input is from minimap2.")), ToolInput(tag="in_discard_secondary_alignments", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Do NOT discard secondary and supplementary alignments.")), ToolInput(tag="in_print_out_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Print out version.")), ToolInput(tag="in_bundle_together_loci", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Bundle together loci in batches with at least this size. (default -1)")), ToolInput(tag="in_classify_deletions_larger", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Classify all deletions larger than this as introns (-1 means off). (default -1)")), ToolInput(tag="in_use_strand_tag", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Use strand tag as feature orientation then read strand if not available.")), ToolInput(tag="in_use_read_strand", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Use read strand (from BAM flag) as feature orientation.")), ToolInput(tag="in_number_cores_use", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of cores to use. (default 8)\n"))], outputs=[ToolOutput(tag="out_write_output_partitioned", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_write_output_partitioned", type_hint=File()), doc=OutputDocumentation(doc="Write output partitioned into 'loci' to this directory. Turns of output to stdout."))], container="quay.io/biocontainers/spliced_bam2gff:1.3--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spliced_Bam2Gff_V0_1_0().translate("wdl")

