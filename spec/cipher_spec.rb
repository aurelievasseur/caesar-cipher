require './lib/cipher.rb'

describe "#cipher" do
    it "keeps the space between words" do
        expect(caesar_cipher("aa aa", 1)).to eql("bb bb")
    end

    it "is case sensitive" do
        expect(caesar_cipher("aaAA", 1)).to eql("bbBB")
    end

    it "cycle throught the alphabet if getting number above 26" do
        expect(caesar_cipher("aaa", 27)).to eql("bbb")
    end

    it "works with punctuation" do
        expect(caesar_cipher("bbbb!!!", 1)).to eql("cccc!!!")
    end

    it "works with negative shift" do
        expect(caesar_cipher("bbbBBB bb", -1)).to eql("aaaAAA aa")
    end

end