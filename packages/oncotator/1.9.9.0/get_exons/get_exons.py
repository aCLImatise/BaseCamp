from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Get_Exons_V0_1_0 = CommandToolBuilder(tool="get_exons", base_command=["get_exons"], inputs=[ToolInput(tag="in_include_noncoding", input_type=Boolean(optional=True), prefix="--includeNonCoding", doc=InputDocumentation(doc="Whether non-coding regions should be included.")), ToolInput(tag="in_padding", input_type=Int(optional=True), prefix="--padding", doc=InputDocumentation(doc="Pad each exon by a number of bases on both sides.\nDefault: 0\nError file will be [outputFilename].err.\nTranscript datasource is the full path to the directory housing the datasource.\nThis script is experimental and has minimal error checking.\nTo create a gene list from GENCODE (and probably ENSEMBL) gtfs:\negrep 'basic' gencode.v18.annotation.gtf | sed -r 's/.+gene_name\ '([A-Za-z0-9]+)'.+//g' | sort | uniq >gene_list.txt\nTo append genes from another GENCODE/ENSEMBL gtf:\negrep 'basic' gencode.v18.long_noncoding_RNAs.gtf | sed -r 's/.+gene_name\ '([A-Za-z0-9]+)'.+//g' | sort | uniq >> gene_list.txt\nTo get the output of this file into a BED format, for example, with a given gene list and gencode datasource :\nget_exons gene_list.txt /my_db_dir/gencode_out2/hg19/gencode_out2.config gencode_basic_exons.txt\nawk '{print $2 '        ' $3 '  ' $4 '  ' $1}' gencode_basic_exons.txt | sort -k1,1 -k2,2n  > gencode_basic_exons.bed.txt\nThen to merge the exons using bedtools, if you would like:\nmergeBed -nms -i gencode_basic_exons.bed.txt > gencode_basic_exons.merged.txt\n")), ToolInput(tag="in_input_gene_list_file", input_type=String(), position=0, doc=InputDocumentation(doc="A simple file with a gene name (usually Hugo Symbol)\non each line")), ToolInput(tag="in_transcript_ds_config", input_type=String(), position=1, doc=InputDocumentation(doc="Path to transcript datasource config file.")), ToolInput(tag="in_output_file_name", input_type=String(), position=2, doc=InputDocumentation(doc="output path. Must be writable. Will overwrite existing")), ToolInput(tag="in_files_dot", input_type=String(), position=3, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Exons_V0_1_0().translate("wdl", allow_empty_container=True)

