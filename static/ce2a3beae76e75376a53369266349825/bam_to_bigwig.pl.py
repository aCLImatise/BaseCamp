from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File

Bam_To_Bigwig_Pl_V0_1_0 = CommandToolBuilder(tool="bam_to_bigwig.pl", base_command=["bam_to_bigwig.pl"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="Input file in BAM format")), ToolInput(tag="in_cs", input_type=Boolean(optional=True), prefix="--cs", doc=InputDocumentation(doc="Chromosome sizes file")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="--strand", doc=InputDocumentation(doc="Use this option if the input BAM file is strictly strand-specific,\nie. contains only reads mapped to either the positive or negative\nstrand. Possible values are either '+' or '-'. If the value given\nhere is '+', the interim bedGraph file will be created with positive\nvalues. A '-' given here will create the inerim bedGraph file with\nnegative values, which is required for proper visualization of\nbigWig files holding coverage profiles of reads mapped to the\nnegative strand in the UCSC genome browser. If the input BAM file is\nnot strand-specific, ie contains reads mapped to both positive and\nnegative strand, then the default value '+' will be used, resulting\nin bigWig coverage profiles rendered in positive (y-axis direction)\nin the UCSC genome browser.")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Name of the log file. Unless specified, the default log file will be\n'bam_to_bigwig.log' in the given output directory.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory")), ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="Name of the log file. Unless specified, the default log file will be\n'bam_to_bigwig.log' in the given output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_To_Bigwig_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

